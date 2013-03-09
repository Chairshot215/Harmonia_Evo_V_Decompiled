.class public Lcom/google/android/finsky/utils/Nfc;
.super Ljava/lang/Object;
.source "Nfc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/Nfc$1;,
        Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;,
        Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;,
        Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;,
        Lcom/google/android/finsky/utils/Nfc$NoopNfcHandler;,
        Lcom/google/android/finsky/utils/Nfc$NfcHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static getHandler(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)Lcom/google/android/finsky/utils/Nfc$NfcHandler;
    .locals 5
    .parameter "fragment"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.nfc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 36
    .local v0, hasNfc:Z
    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 37
    new-instance v2, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;

    invoke-direct {v2, p0, v4}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V

    .line 41
    :goto_0
    return-object v2

    .line 38
    :cond_0
    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 39
    new-instance v2, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;

    invoke-direct {v2, p0, v4}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V

    goto :goto_0

    .line 41
    :cond_1
    new-instance v2, Lcom/google/android/finsky/utils/Nfc$NoopNfcHandler;

    invoke-direct {v2, v4}, Lcom/google/android/finsky/utils/Nfc$NoopNfcHandler;-><init>(Lcom/google/android/finsky/utils/Nfc$1;)V

    goto :goto_0
.end method
