(require-macros :fennel-test)

(local {: hello-world} (require :hello-world))

(deftest fn/hello-world
  (testing "that it prints Hello World"
    ;; Preparation
    (local messages [])
    (fn _G.print [...]
      (table.insert messages [...]))
    ;; Execution
    (hello-world)
    ;; Assertion
    (assert-eq messages [["Hello World"]])))
