<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle1" value="### Help + Feedback" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text1"
      value="Responsible Team
##### {{ appOwner.value }}

App Help Info
##### [See Docs Here]({{ appHelpDoc.value }})"
      verticalAlign="center"
    />
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Submit Help/Feedback Request"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <RadioGroup
          id="requestType"
          itemMode="static"
          label="Request Type"
          labelPosition="top"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Bug Report" />
          <Option id="00031" value="Feature Request" />
        </RadioGroup>
        <TextArea
          id="textArea1"
          autoResize={true}
          label="Describe your Request"
          labelCaption="Context (~current URL) will be captured automatically"
          labelPosition="top"
          minLines="5"
          placeholder="Enter value"
        />
        <Icon
          id="icon2"
          horizontalAlign="center"
          icon="bold/image-picture-laptop"
          tooltipText="TODO: dom based screenshot"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit Feedback"
        />
      </Footer>
    </Form>
    <FileButton
      id="fileButton1"
      _isUpgraded={true}
      hidden="{{ !retoolContext.inEditorMode }}"
      iconBefore="bold/programming-browser-search"
      maxCount={20}
      maxSize="250mb"
      styleVariant="outline"
      text="Copy file for icon"
    >
      <Event
        event="parse"
        method="copyToClipboard"
        params={{
          map: { value: "{{ JSON.stringify(fileButton1.value[0]) }}" },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
  </Body>
</ModalFrame>
