/** @fileoverview @typeSummary */
goog.loadModule(function(exports) {
  "use strict";
  goog.module("DynamicClassDispatchBaselineBenchmark_j2wasm_binary.j2wasm");
  const j2wasm_CharUtils = goog.require("j2wasm.CharUtils");
  const j2wasm_ConsoleUtils = goog.require("j2wasm.ConsoleUtils");
  const j2wasm_DoubleUtils = goog.require("j2wasm.DoubleUtils");
  const j2wasm_ExceptionUtils = goog.require("j2wasm.ExceptionUtils");
  const j2wasm_StringUtils = goog.require("j2wasm.StringUtils");
  /**
   * @return {!Object<string,*>} Wasm import object
   */
  function getImports() {
  }
  const options = {/** @const @type {UnusableType} */ 
  "builtins":0, /** @const @type {UnusableType} */ 
  "importedStringConstants":0};
  /**
   * @param {(string|!Response|!Promise<!Response>)} urlOrResponse
   * @return {!Promise<!WebAssembly.Instance>}
   * @suppress {checkTypes} Externs are missing options parameter (phase 2)
   */
  async function instantiateStreaming(urlOrResponse) {
  }
  /**
   * @param {(string|!Response|!Promise<!Response>)} urlOrResponse
   * @return {!Promise<!WebAssembly.Module>}
   * @suppress {checkTypes} Externs are missing options parameter (phase 2)
   */
  async function compileStreaming(urlOrResponse) {
  }
  /**
   * @param {!WebAssembly.Module} module
   * @return {!Promise<!WebAssembly.Instance>}
   * @suppress {checkTypes} Externs are missing overloads for WebAssembly.instantiate.
   */
  async function instantiate(module) {
  }
  /**
   * @param {!BufferSource} moduleObject
   * @return {!WebAssembly.Instance}
   * @suppress {checkTypes} Externs are missing options parameter (phase 2)
   */
  function instantiateBlocking(moduleObject) {
  }
  /**
   * @param {!WebAssembly.Module} module
   * @return {!Object<string,*>}
   */
  function prepareImports(module) {
  }
  exports = {compileStreaming, instantiate, instantiateStreaming, instantiateBlocking};
  return exports;
});
