package br.com.fiap.locatech.locatech.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;

import java.time.LocalDate;

public record AluguelRequestDTO(

        @Schema(description = "ID da pessoa que está alugando o veículo", example = "1")
        @NotNull(message = "O ID da pessoa não pode ser nulo")
        Long pessoaId,

        @Schema(description = "ID do veículo que está sendo alugado", example = "1")
        @NotNull(message = "O ID da veiculo não pode ser nulo")
        Long veiculoId,

        @Schema(description = "Data de início do aluguel", example = "2024-07-01")
        @NotNull(message = "O data de início do aluguel não pode ser nulo")
        LocalDate dataInicio,

        @Schema(description = "Data de fim do aluguel", example = "2024-07-10")
        @NotNull(message = "O data de fim do aluguel não pode ser nulo")
        LocalDate dataFim) {
}
