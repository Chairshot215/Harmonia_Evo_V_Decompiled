.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;,
        Landroid/nfc/NfcAdapter$NdefPushCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.nxp.extra.AID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final LLCP_LINK_STATE_ACTIVATED:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "NFC"

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sService:Landroid/nfc/INfcAdapter;

.field static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final mContext:Landroid/content/Context;

.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final mNfcActivityManager:Landroid/nfc/NfcActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "NFC"

    const-string v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5

    const-class v3, Landroid/nfc/NfcAdapter;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NFC"

    const-string/jumbo v4, "this device does not have NFC support"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_1

    const-string v2, "NFC"

    const-string v4, "could not retrieve NFC service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    :try_start_3
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    :cond_2
    if-nez p0, :cond_5

    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_3

    new-instance v2, Landroid/nfc/NfcAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_3
    sget-object v0, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_0
    monitor-exit v3

    return-object v0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "NFC"

    const-string v4, "could not retrieve NFC Tag service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    :cond_5
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_4

    new-instance v0, Landroid/nfc/NfcAdapter;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "NFC"

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "NFC"

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public activeSwp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getDefaultSelectedSecureElement()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UICC is not selected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->activeSwp()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "NFC"

    const-string v3, "activeSwp failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "activeSwp failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4

    const-string v2, "NFC"

    const-string v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createNfcSecureElementConnection()Landroid/nfc/NfcSecureElement;
    .locals 3

    :try_start_0
    new-instance v1, Landroid/nfc/NfcSecureElement;

    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcSecureElementInterface()Landroid/nfc/INfcSecureElement;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/nfc/NfcSecureElement;-><init>(Landroid/nfc/INfcSecureElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "createNfcSecureElementConnection failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deSelectedSecureElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disable()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    return-void
.end method

.method public disableNdefPush()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableP2P()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableP2P()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableReaderWriter()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableReaderWriter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v1, 0x0

    if-eqz p4, :cond_3

    :try_start_0
    array-length v3, p4

    if-lez v3, :cond_3

    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    return-void
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NfcAdapter$NdefPushCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    new-instance v0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;

    invoke-direct {v0, p2}, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;-><init>(Landroid/nfc/NfcAdapter$NdefPushCallback;)V

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v1, p1, v0}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v1, p1, v0}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    return-void
.end method

.method public enableNdefPush()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableP2P()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableP2P()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableReaderWriter()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableReaderWriter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getAdapterState()I
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultSelectedSecureElement()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v1

    const v2, 0xabcdf0

    if-ne v1, v2, :cond_0

    const-string v2, "com.nxp.uicc.ID"

    :goto_0
    return-object v2

    :cond_0
    const v2, 0xabcdef

    if-ne v1, v2, :cond_1

    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "NFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 3

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public isCardEmuEnabled()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isCardEmuEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isNdefPushEnabled()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isP2PEnabled()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isP2PEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReaderWriterEnabled()Z
    .locals 2

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isReaderWriterEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v2, 0xabcdf0

    :goto_0
    :try_start_0
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v5

    if-eq v5, v2, :cond_0

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getSecureElementList()[I

    move-result-object v3

    array-length v5, v3

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    aget v5, v3, v1

    if-ne v5, v2, :cond_1

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->selectSecureElement(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v2, 0xabcdef

    goto :goto_0

    :cond_3
    const-string v5, "NFC"

    const-string/jumbo v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v0

    const-string v5, "NFC"

    const-string/jumbo v6, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failure in deselecting the selected Secure Element"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    if-nez v4, :cond_5

    :try_start_2
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->storeSePreference(I)V

    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v5, "NFC"

    const-string/jumbo v6, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void

    :cond_6
    :try_start_3
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->storeSePreference(I)V

    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public setDefaultSecureElementState(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "NFC"

    const-string v3, "No Secure Element selected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->setSecureElementState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "NFC"

    const-string v3, "Enable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Enable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "NFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->setSecureElementState(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "NFC"

    const-string v3, "Disable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public varargs setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activity cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activities cannot contain null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v0, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activity cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activities cannot contain null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v0, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activity cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activities cannot contain null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
