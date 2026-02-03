SET search_path TO app;

CREATE TABLE IF NOT EXISTS app_session (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    canal VARCHAR(50) NOT NULL DEFAULT 'n8n',
    identificador_externo VARCHAR(100), -- ex: telefone, whatsapp_id, etc.
    criado_em TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS app_mensagem (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id UUID NOT NULL REFERENCES app_session(id) ON DELETE CASCADE,
    remetente VARCHAR(20) NOT NULL CHECK (remetente IN ('usuario', 'assistente')),
    mensagem TEXT NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT NOW()
);
