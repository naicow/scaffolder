-- Migration: 20260928_task_category
-- Description: Adiciona categoria às tarefas (enum TaskCategory)

-- Consulta 001: Criação do tipo enum para categoria
CREATE TYPE "TaskCategory" AS ENUM ('WORK', 'STUDY', 'PERSONAL', 'HEALTH', 'OTHER');

-- Consulta 002: Adição da coluna category na tabela tasks
ALTER TABLE "tasks" ADD COLUMN "category" "TaskCategory" NOT NULL DEFAULT 'OTHER';

-- Consulta 003: Índice para consultas por categoria
CREATE INDEX "tasks_category_idx" ON "tasks"("category");