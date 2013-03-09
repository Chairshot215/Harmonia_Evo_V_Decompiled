.class Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;
.super Ljava/lang/Object;
.source "StandardAddressVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/StandardAddressVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Verifier"
.end annotation


# instance fields
.field private mAddress:Lcom/android/i18n/addressinput/AddressData;

.field private mListener:Lcom/android/i18n/addressinput/DataLoadListener;

.field private mProblems:Lcom/android/i18n/addressinput/AddressProblems;

.field final synthetic this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/StandardAddressVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0
    .parameter
    .parameter "address"
    .parameter "problems"
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    .line 109
    iput-object p3, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    .line 110
    iput-object p4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-interface {v0}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingBegin()V

    .line 117
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    iget-object v2, v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mRootVerifier:Lcom/android/i18n/addressinput/FieldVerifier;

    .line 119
    .local v2, v:Lcom/android/i18n/addressinput/FieldVerifier;
    const/4 v1, 0x0

    .line 120
    .local v1, script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 131
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    .line 133
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 134
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    .line 136
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 137
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    .line 139
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 141
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    .line 148
    :cond_1
    const-string v0, "\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/android/i18n/addressinput/Util;->joinAndSkipNulls(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, street:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 153
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 154
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getSortingCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 155
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getOrganization()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 156
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    .line 158
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    iget-object v3, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->postVerify(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V

    .line 160
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-interface {v0}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingEnd()V

    .line 161
    return-void

    .line 124
    .end local v6           #street:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto/16 :goto_0
.end method
