../ebin/dtls_server_connection.beam: dtls_server_connection.erl \
  dtls_connection.hrl ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl dtls_handshake.hrl tls_handshake.hrl
../ebin/dtls_client_connection.beam: dtls_client_connection.erl \
  dtls_connection.hrl ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl dtls_handshake.hrl tls_handshake.hrl
../ebin/dtls_connection_sup.beam: dtls_connection_sup.erl
../ebin/dtls_handshake.beam: dtls_handshake.erl dtls_connection.hrl \
  ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl dtls_handshake.hrl tls_handshake.hrl dtls_record.hrl
../ebin/dtls_gen_connection.beam: dtls_gen_connection.erl \
  dtls_connection.hrl ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl dtls_handshake.hrl tls_handshake.hrl dtls_record.hrl
../ebin/dtls_listener_sup.beam: dtls_listener_sup.erl
../ebin/dtls_packet_demux.beam: dtls_packet_demux.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl
../ebin/dtls_record.beam: dtls_record.erl dtls_record.hrl ssl_record.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl dtls_handshake.hrl tls_handshake.hrl ssl_handshake.hrl \
  ssl_api.hrl ssl_cipher.hrl
../ebin/dtls_server_sup.beam: dtls_server_sup.erl
../ebin/dtls_server_session_cache_sup.beam: \
  dtls_server_session_cache_sup.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl
../ebin/dtls_sup.beam: dtls_sup.erl
../ebin/dtls_socket.beam: dtls_socket.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl ssl_api.hrl
../ebin/dtls_v1.beam: dtls_v1.erl ssl_cipher.hrl ssl_record.hrl
../ebin/inet_epmd_tls_socket.beam: inet_epmd_tls_socket.erl \
  ../../kernel/include/net_address.hrl \
  ../../kernel/include/dist.hrl \
  ../../kernel/include/dist_util.hrl \
  ../../public_key/include/public_key.hrl ssl_api.hrl \
  ssl_cipher.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl ssl_record.hrl
../ebin/inet_tls_dist.beam: inet_tls_dist.erl \
  ../../kernel/include/net_address.hrl \
  ../../kernel/include/dist.hrl \
  ../../kernel/include/dist_util.hrl \
  ../../public_key/include/public_key.hrl ssl_api.hrl \
  ssl_cipher.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl ssl_record.hrl
../ebin/inet6_tls_dist.beam: inet6_tls_dist.erl
../ebin/ssl.beam: ssl.erl \
  ../../public_key/include/public_key.hrl \
  ../../kernel/include/logger.hrl ssl_internal.hrl \
  ssl_api.hrl ssl_record.hrl ssl_cipher.hrl ssl_handshake.hrl ssl_srp.hrl
../ebin/ssl_admin_sup.beam: ssl_admin_sup.erl
../ebin/ssl_alert.beam: ssl_alert.erl ssl_alert.hrl \
  ../../kernel/include/logger.hrl ssl_record.hrl \
  ssl_internal.hrl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_app.beam: ssl_app.erl
../ebin/ssl_certificate.beam: ssl_certificate.erl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl ../../kernel/include/logger.hrl \
  ssl_internal.hrl ssl_record.hrl
../ebin/ssl_cipher.beam: ssl_cipher.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_cipher.hrl ssl_handshake.hrl ssl_alert.hrl \
  tls_handshake_1_3.hrl tls_handshake.hrl
../ebin/ssl_cipher_format.beam: ssl_cipher_format.erl ssl_api.hrl \
  ssl_cipher.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_client_session_cache_db.beam: ssl_client_session_cache_db.erl \
  ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl
../ebin/ssl_config.beam: ssl_config.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_connection.hrl ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl \
  ssl_cipher.hrl ssl_api.hrl ssl_alert.hrl
../ebin/ssl_connection_sup.beam: ssl_connection_sup.erl
../ebin/ssl_crl.beam: ssl_crl.erl ssl_alert.hrl \
  ../../kernel/include/logger.hrl ssl_internal.hrl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_crl_cache.beam: ssl_crl_cache.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_crl_hash_dir.beam: ssl_crl_hash_dir.erl \
  ../../public_key/include/public_key.hrl \
  ../../kernel/include/logger.hrl
../ebin/ssl_dh_groups.beam: ssl_dh_groups.erl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_dist_admin_sup.beam: ssl_dist_admin_sup.erl
../ebin/ssl_dist_connection_sup.beam: ssl_dist_connection_sup.erl
../ebin/ssl_dist_sup.beam: ssl_dist_sup.erl
../ebin/ssl_gen_statem.beam: ssl_gen_statem.erl ssl_api.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_connection.hrl ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl \
  ssl_cipher.hrl ssl_alert.hrl tls_handshake.hrl tls_connection.hrl \
  tls_record.hrl
../ebin/ssl_handshake.beam: ssl_handshake.erl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_cipher.hrl ssl_alert.hrl \
  ../../kernel/include/logger.hrl ssl_internal.hrl \
  ssl_srp.hrl tls_handshake_1_3.hrl tls_handshake.hrl
../ebin/ssl_listen_tracker_sup.beam: ssl_listen_tracker_sup.erl
../ebin/ssl_logger.beam: ssl_logger.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  tls_record.hrl ssl_record.hrl tls_handshake.hrl ssl_handshake.hrl \
  dtls_handshake.hrl ssl_api.hrl tls_handshake_1_3.hrl
../ebin/ssl_manager.beam: ssl_manager.erl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ssl_api.hrl ../../kernel/include/file.hrl
../ebin/ssl_pem_cache.beam: ssl_pem_cache.erl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ../../kernel/include/file.hrl
../ebin/ssl_pkix_db.beam: ssl_pkix_db.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ../../kernel/include/file.hrl
../ebin/ssl_record.beam: ssl_record.erl ssl_record.hrl ssl_connection.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl ssl_alert.hrl
../ebin/ssl_server_session_cache.beam: ssl_server_session_cache.erl \
  ../../kernel/include/logger.hrl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl
../ebin/ssl_server_session_cache_db.beam: ssl_server_session_cache_db.erl
../ebin/ssl_server_session_cache_sup.beam: ssl_server_session_cache_sup.erl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_upgrade_server_session_cache_sup.beam: \
  ssl_upgrade_server_session_cache_sup.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_session.beam: ssl_session.erl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ssl_api.hrl ssl_record.hrl
../ebin/ssl_srp_primes.beam: ssl_srp_primes.erl
../ebin/ssl_sup.beam: ssl_sup.erl
../ebin/tls_bloom_filter.beam: tls_bloom_filter.erl
../ebin/tls_dtls_client_connection.beam: tls_dtls_client_connection.erl \
  ../../public_key/include/public_key.hrl \
  ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl ssl_record.hrl \
  ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl ssl_alert.hrl
../ebin/tls_dtls_server_connection.beam: tls_dtls_server_connection.erl \
  ../../public_key/include/public_key.hrl \
  ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl ssl_record.hrl \
  ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl ssl_alert.hrl
../ebin/tls_dtls_gen_connection.beam: tls_dtls_gen_connection.erl \
  ../../public_key/include/public_key.hrl \
  tls_connection.hrl ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl ssl_record.hrl \
  ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl ssl_alert.hrl \
  tls_record.hrl
../ebin/tls_server_connection.beam: tls_server_connection.erl \
  tls_connection.hrl ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl tls_record.hrl tls_handshake.hrl
../ebin/tls_client_connection.beam: tls_client_connection.erl \
  tls_connection.hrl ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl tls_record.hrl tls_handshake.hrl
../ebin/tls_connection_sup.beam: tls_connection_sup.erl
../ebin/tls_server_connection_1_3.beam: tls_server_connection_1_3.erl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl ../../kernel/include/logger.hrl \
  ssl_connection.hrl ssl_internal.hrl ssl_record.hrl ssl_handshake.hrl \
  ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl tls_connection.hrl tls_record.hrl \
  tls_handshake.hrl tls_handshake_1_3.hrl
../ebin/tls_client_connection_1_3.beam: tls_client_connection_1_3.erl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl ../../kernel/include/logger.hrl \
  ssl_connection.hrl ssl_internal.hrl ssl_record.hrl ssl_handshake.hrl \
  ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl tls_connection.hrl tls_record.hrl \
  tls_handshake.hrl tls_handshake_1_3.hrl
../ebin/tls_gen_connection_1_3.beam: tls_gen_connection_1_3.erl \
  ssl_alert.hrl ../../kernel/include/logger.hrl \
  ssl_connection.hrl ssl_internal.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  tls_connection.hrl tls_record.hrl tls_handshake.hrl tls_handshake_1_3.hrl
../ebin/tls_gen_connection.beam: tls_gen_connection.erl tls_connection.hrl \
  ssl_connection.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl ssl_handshake.hrl ssl_srp.hrl ssl_cipher.hrl ssl_api.hrl \
  ssl_alert.hrl tls_record.hrl tls_handshake.hrl tls_record_1_3.hrl
../ebin/tls_handshake.beam: tls_handshake.erl tls_handshake.hrl \
  ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  tls_handshake_1_3.hrl tls_record.hrl ssl_record.hrl ssl_alert.hrl \
  ../../kernel/include/logger.hrl ssl_internal.hrl \
  ssl_cipher.hrl ssl_api.hrl
../ebin/tls_handshake_1_3.beam: tls_handshake_1_3.erl tls_handshake_1_3.hrl \
  tls_handshake.hrl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl ../../kernel/include/logger.hrl \
  ssl_cipher.hrl ssl_connection.hrl ssl_internal.hrl ssl_record.hrl \
  ssl_srp.hrl ssl_api.hrl tls_record_1_3.hrl tls_record.hrl
../ebin/tls_record.beam: tls_record.erl tls_record.hrl ssl_record.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl tls_handshake.hrl ssl_handshake.hrl ssl_cipher.hrl
../ebin/tls_record_1_3.beam: tls_record_1_3.erl tls_record.hrl \
  ssl_record.hrl tls_record_1_3.hrl tls_handshake_1_3.hrl tls_handshake.hrl \
  ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ssl_alert.hrl ssl_cipher.hrl
../ebin/tls_client_ticket_store.beam: tls_client_ticket_store.erl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  tls_handshake_1_3.hrl tls_handshake.hrl ssl_handshake.hrl
../ebin/tls_dist_sup.beam: tls_dist_sup.erl
../ebin/tls_dist_server_sup.beam: tls_dist_server_sup.erl
../ebin/tls_dyn_connection_sup.beam: tls_dyn_connection_sup.erl
../ebin/tls_sender.beam: tls_sender.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_alert.hrl ssl_record.hrl tls_handshake_1_3.hrl tls_handshake.hrl \
  ssl_handshake.hrl
../ebin/tls_server_session_ticket.beam: tls_server_session_ticket.erl \
  tls_handshake_1_3.hrl tls_handshake.hrl ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ssl_alert.hrl ssl_cipher.hrl
../ebin/tls_server_session_ticket_sup.beam: \
  tls_server_session_ticket_sup.erl
../ebin/tls_server_sup.beam: tls_server_sup.erl
../ebin/tls_socket.beam: tls_socket.erl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl ssl_api.hrl \
  ssl_record.hrl
../ebin/tls_socket_tcp.beam: tls_socket_tcp.erl
../ebin/tls_sup.beam: tls_sup.erl
../ebin/tls_v1.beam: tls_v1.erl ssl_cipher.hrl ssl_internal.hrl \
  ../../kernel/include/logger.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_record.hrl tls_handshake_1_3.hrl tls_handshake.hrl ssl_handshake.hrl
../ebin/ssl_trace.beam: ssl_trace.erl
../ebin/ssl_crl_cache_api.beam: ssl_crl_cache_api.erl \
  ../../public_key/include/public_key.hrl
../ebin/ssl_session_cache_api.beam: ssl_session_cache_api.erl \
  ssl_handshake.hrl \
  ../../public_key/include/public_key.hrl \
  ssl_internal.hrl ../../kernel/include/logger.hrl \
  ssl_api.hrl
