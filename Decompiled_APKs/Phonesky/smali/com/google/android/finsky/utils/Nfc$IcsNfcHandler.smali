.class Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;
.super Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;
.source "Nfc.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcsNfcHandler"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V

    return-void
.end method

.method private setCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1
    .parameter "event"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public onDataChanged()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->setCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 189
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->setCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->setCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 184
    return-void
.end method
