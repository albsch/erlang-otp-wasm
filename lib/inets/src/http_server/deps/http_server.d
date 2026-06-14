$(EBIN)/httpd.$(EMULATOR): httpd.erl httpd_internal.hrl
$(EBIN)/httpd_acceptor.$(EMULATOR): httpd_acceptor.erl httpd.hrl \
  ../../../kernel/include/logger.hrl
$(EBIN)/httpd_acceptor_sup.$(EMULATOR): httpd_acceptor_sup.erl httpd_internal.hrl
$(EBIN)/httpd_connection_sup.$(EMULATOR): httpd_connection_sup.erl
$(EBIN)/httpd_cgi.$(EMULATOR): httpd_cgi.erl
$(EBIN)/httpd_conf.$(EMULATOR): httpd_conf.erl httpd_internal.hrl httpd.hrl
$(EBIN)/httpd_custom.$(EMULATOR): httpd_custom.erl ../inets_app/inets_internal.hrl
$(EBIN)/httpd_example.$(EMULATOR): httpd_example.erl
$(EBIN)/httpd_esi.$(EMULATOR): httpd_esi.erl
$(EBIN)/httpd_file.$(EMULATOR): httpd_file.erl httpd.hrl httpd_internal.hrl
$(EBIN)/httpd_instance_sup.$(EMULATOR): httpd_instance_sup.erl httpd_internal.hrl
$(EBIN)/httpd_log.$(EMULATOR): httpd_log.erl httpd.hrl
$(EBIN)/httpd_logger.$(EMULATOR): httpd_logger.erl \
  ../../../kernel/include/logger.hrl
$(EBIN)/httpd_manager.$(EMULATOR): httpd_manager.erl httpd.hrl
$(EBIN)/httpd_misc_sup.$(EMULATOR): httpd_misc_sup.erl
$(EBIN)/httpd_request.$(EMULATOR): httpd_request.erl httpd.hrl httpd_internal.hrl
$(EBIN)/httpd_request_handler.$(EMULATOR): httpd_request_handler.erl httpd.hrl \
  ../http_lib/http_internal.hrl \
  ../../../kernel/include/logger.hrl
$(EBIN)/httpd_response.$(EMULATOR): httpd_response.erl \
  ../../../kernel/include/logger.hrl
$(EBIN)/httpd_script_env.$(EMULATOR): httpd_script_env.erl httpd.hrl httpd_internal.hrl
$(EBIN)/httpd_socket.$(EMULATOR): httpd_socket.erl httpd.hrl \
  ../../../kernel/include/inet.hrl
$(EBIN)/httpd_sup.$(EMULATOR): httpd_sup.erl httpd_internal.hrl
$(EBIN)/httpd_util.$(EMULATOR): httpd_util.erl \
  ../../../kernel/include/file.hrl
$(EBIN)/mod_actions.$(EMULATOR): mod_actions.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_alias.$(EMULATOR): mod_alias.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_auth.$(EMULATOR): mod_auth.erl httpd.hrl mod_auth.hrl httpd_internal.hrl
$(EBIN)/mod_auth_plain.$(EMULATOR): mod_auth_plain.erl httpd.hrl mod_auth.hrl \
  httpd_internal.hrl
$(EBIN)/mod_auth_dets.$(EMULATOR): mod_auth_dets.erl httpd.hrl httpd_internal.hrl \
  mod_auth.hrl
$(EBIN)/mod_auth_mnesia.$(EMULATOR): mod_auth_mnesia.erl httpd.hrl mod_auth.hrl
$(EBIN)/mod_auth_server.$(EMULATOR): mod_auth_server.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_cgi.$(EMULATOR): mod_cgi.erl httpd_internal.hrl httpd.hrl
$(EBIN)/mod_dir.$(EMULATOR): mod_dir.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_disk_log.$(EMULATOR): mod_disk_log.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_esi.$(EMULATOR): mod_esi.erl httpd.hrl httpd_internal.hrl \
  ../../../kernel/include/logger.hrl
$(EBIN)/mod_get.$(EMULATOR): mod_get.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_head.$(EMULATOR): mod_head.erl httpd.hrl
$(EBIN)/mod_log.$(EMULATOR): mod_log.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_range.$(EMULATOR): mod_range.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_responsecontrol.$(EMULATOR): mod_responsecontrol.erl httpd.hrl \
  httpd_internal.hrl
$(EBIN)/mod_trace.$(EMULATOR): mod_trace.erl httpd.hrl
$(EBIN)/mod_security.$(EMULATOR): mod_security.erl httpd.hrl httpd_internal.hrl
$(EBIN)/mod_security_server.$(EMULATOR): mod_security_server.erl httpd.hrl \
  httpd_internal.hrl
$(EBIN)/httpd_custom_api.$(EMULATOR): httpd_custom_api.erl
