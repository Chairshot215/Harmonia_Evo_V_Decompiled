.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.super Ljava/lang/Object;
.source "VoiceSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValueOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContextOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItemOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequestOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestDataOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestDataOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusListOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsDataOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammarOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammarOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammarOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammarOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttributeOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18988
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .parameter "registry"

    .prologue
    .line 10
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;->webSearchGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 11
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->focusGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 12
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 13
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->configurableGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 14
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->multiModalData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 15
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasContactData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 16
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contactsData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 17
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 18
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 19
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 20
    return-void
.end method
