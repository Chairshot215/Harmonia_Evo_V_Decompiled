.class public final Landroid/nfc/NfcFragment;
.super Landroid/app/Fragment;
.source "NfcFragment.java"


# static fields
.field static final FRAGMENT_TAG:Ljava/lang/String; = "android.nfc.NfcFragment"

.field static sIsInitialized:Z

.field static sNfcActivityManager:Landroid/nfc/NfcActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcFragment;->sIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "android.nfc.NfcFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/nfc/NfcFragment;

    invoke-direct {v2}, Landroid/nfc/NfcFragment;-><init>()V

    const-string v3, "android.nfc.NfcFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static remove(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android.nfc.NfcFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v1, Landroid/nfc/NfcFragment;->sIsInitialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Landroid/nfc/NfcFragment;->sIsInitialized:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    sput-object v1, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p0}, Landroid/nfc/NfcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->onDestroy(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p0}, Landroid/nfc/NfcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p0}, Landroid/nfc/NfcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
