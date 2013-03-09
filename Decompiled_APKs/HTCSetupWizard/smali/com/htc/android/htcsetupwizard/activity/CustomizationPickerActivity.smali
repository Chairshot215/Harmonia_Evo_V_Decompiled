.class public Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;
.super Landroid/app/ListActivity;
.source "CustomizationPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$2;,
        Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION_PICKER:Ljava/lang/String; = "com.htc.action.CustomizationPicker"

.field private static final CUSTOMIZATION_MNS_ROOT:Ljava/lang/String; = "/system/customize/MNS/"

.field private static final CUSTOMIZATION_ROOT:Ljava/lang/String; = "/system/customize/"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field private static final MVNO_MAP_FILE:Ljava/lang/String; = "mvno_map.xml"

.field public static final RESULT_BACK_KEY:I = 0x2

.field static final TAG:Ljava/lang/String; = "OOBE_CustomizationPickerActivity"


# instance fields
.field private isReceiverRegistered:Z

.field private mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGID:Ljava/lang/String;

.field private mInitialPosition:I

.field private mLaunchByIcon:Z

.field private mLoadingProgressDialog:Landroid/app/ProgressDialog;

.field protected mOperators:[Ljava/lang/String;

.field private mRadioButton:I

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mbBackFinish:Z

.field private mvnoMapPath:Ljava/lang/String;

.field private parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

.field parseXml:Lcom/htc/android/htcsetupwizard/ParseXml;

.field private profilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mInitialPosition:I

    .line 53
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mbBackFinish:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLaunchByIcon:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->isReceiverRegistered:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    .line 61
    const-string v0, "/system/customize/mvno_map.xml"

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mvnoMapPath:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mRadioButton:I

    .line 63
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-direct {v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    .line 65
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseXml;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/ParseXml;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseXml:Lcom/htc/android/htcsetupwizard/ParseXml;

    .line 66
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mRadioButton:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->handleCustomizationFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mInitialPosition:I

    return v0
.end method

.method private getLoadingProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 229
    const-string v0, "OOBE_CustomizationPickerActivity"

    const-string v1, "get loading progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 232
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a011b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 235
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 236
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleCustomizationFinish()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->finish()V

    .line 225
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->isReceiverRegistered:Z

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "com.htc.action.CustomizationPicker"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private requestGetGID1()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 417
    :try_start_0
    const-string v6, "com.htc.telephony.HtcTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 431
    .local v0, clsHtcTelephonyManager:Ljava/lang/Class;
    :try_start_1
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 445
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    .line 446
    .local v4, objHtcTelephonyManager:Ljava/lang/Object;
    if-nez v4, :cond_0

    move-object v2, v5

    .line 493
    .end local v0           #clsHtcTelephonyManager:Ljava/lang/Class;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #objHtcTelephonyManager:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 420
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "Class.forName exception: ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 421
    goto :goto_0

    .line 422
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 423
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    const-string v6, "OOBE_CustomizationPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class.forName exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 425
    goto :goto_0

    .line 432
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #clsHtcTelephonyManager:Ljava/lang/Class;
    :catch_2
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 434
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "getMethod exception: SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 435
    goto :goto_0

    .line 436
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 437
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 438
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "getMethod exception: NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 439
    goto :goto_0

    .line 449
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v1

    .line 450
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 451
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "invoke exception: IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 452
    goto :goto_0

    .line 453
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 455
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "invoke exception: IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 456
    goto :goto_0

    .line 457
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 458
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 459
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "invoke exception: InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 460
    goto :goto_0

    .line 465
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v4       #objHtcTelephonyManager:Ljava/lang/Object;
    :cond_0
    :try_start_3
    const-string v6, "requestGetGID1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v3

    .line 479
    const/4 v6, 0x0

    :try_start_4
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_b

    .local v2, gid1:Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v2           #gid1:Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 467
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 468
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "getMethod exception: SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 469
    goto/16 :goto_0

    .line 470
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_8
    move-exception v1

    .line 471
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 472
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "getMethod exception: NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 473
    goto/16 :goto_0

    .line 480
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v1

    .line 481
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 482
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "invoke exception: IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 483
    goto/16 :goto_0

    .line 484
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 486
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "invoke exception: IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 487
    goto/16 :goto_0

    .line 488
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_b
    move-exception v1

    .line 489
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 490
    const-string v6, "OOBE_CustomizationPickerActivity"

    const-string v7, "invoke exception: InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 491
    goto/16 :goto_0
.end method

.method private setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 94
    const/high16 v2, 0x7f0d

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, title:Landroid/widget/TextView;
    const-string v2, "setting_title_color"

    const v3, 0x7f080003

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, color_id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    return-void
.end method

.method private setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 103
    const v2, 0x7f0d0001

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, divider:Landroid/widget/ImageView;
    const-string v2, "oobe_title_divider"

    const v3, 0x7f020004

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, divider_id:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 138
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 139
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 140
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 141
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static switchKeyFocus(Landroid/app/Activity;II)V
    .locals 3
    .parameter "activity"
    .parameter "back"
    .parameter "next"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, btnBack:Landroid/widget/Button;
    const/4 v1, 0x0

    .line 248
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btnBack:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 249
    .restart local v0       #btnBack:Landroid/widget/Button;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #btnNext:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 251
    .restart local v1       #btnNext:Landroid/widget/Button;
    :cond_1
    if-nez v1, :cond_2

    .line 262
    :goto_0
    return-void

    .line 252
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    :cond_3
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 255
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 259
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 260
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method protected getCustomizationAdapter()Landroid/widget/ListAdapter;
    .locals 11

    .prologue
    .line 267
    const-string v9, ""

    .line 268
    .local v9, strOperator:Ljava/lang/String;
    const-string v7, ""

    .line 270
    .local v7, mSimOperator:Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 271
    .local v10, teleMgr:Landroid/telephony/TelephonyManager;
    if-eqz v10, :cond_1

    .line 273
    if-eqz v7, :cond_0

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    :cond_0
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 276
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " strOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    :goto_0
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizationAdapter():from file, mGID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mvnoMapPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 283
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v8, myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$2;->$SwitchMap$com$htc$android$htcsetupwizard$ParseMvnoMap$ParseCase:[I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mOperators:[Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mOperators:[Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mOperators:[Ljava/lang/String;

    .line 330
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    const v3, 0x7f03000b

    const v4, 0x7f0d0017

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mOperators:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;-><init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    .line 331
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    return-object v0

    .line 278
    .end local v8           #myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object v9, v7

    goto :goto_0

    .line 287
    .restart local v8       #myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getFileName(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getOperatorName():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    .line 290
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": profilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator form Settings.System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 295
    :pswitch_1
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getFileName(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getOperatorName():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    .line 298
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": profilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator form Settings.System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOpDisplayNamelist()Ljava/util/ArrayList;

    move-result-object v8

    .line 304
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getOpDisplayNamelist().size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mInitialPosition:I

    .line 306
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 307
    const-string v1, "OOBE_CustomizationPickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": myarraylist.get("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 311
    .end local v6           #i:I
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOpDisplayNamelist()Ljava/util/ArrayList;

    move-result-object v8

    .line 312
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getDefaultIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mInitialPosition:I

    .line 313
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getOpDisplayNamelist().size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 315
    const-string v1, "OOBE_CustomizationPickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": myarraylist.get("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 317
    :cond_4
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getdefaultIndex():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getDefaultIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    .end local v6           #i:I
    :pswitch_4
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, -0x1

    .line 111
    const v2, 0x7f0d0004

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, resultIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->getSelect()I

    move-result v0

    .line 116
    .local v0, myselect:I
    if-eq v5, v0, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getFileNameByIndex(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getFileNameByIndex(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    .line 118
    const-string v2, "OOBE_CustomizationPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profilePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Operator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v4, v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOperatorByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->parseMvnoMap:Lcom/htc/android/htcsetupwizard/ParseMvnoMap;

    invoke-virtual {v4, v0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->getOperatorByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    const-string v2, "MnsProfilePath"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->profilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLaunchByIcon:Z

    if-nez v2, :cond_2

    .line 124
    invoke-virtual {p0, v5, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->finish()V

    .line 136
    .end local v0           #myselect:I
    .end local v1           #resultIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 127
    .restart local v0       #myselect:I
    .restart local v1       #resultIntent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getLoadingProgressDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 128
    const-string v2, "LaunchByIcon"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v2, "com.htc.CustomizationSetup"

    const-string v3, "com.htc.CustomizationSetup.SetupService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 74
    const-string v2, "SelfFinishBackKeyPressed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mbBackFinish:Z

    .line 75
    const-string v2, "LaunchByIcon"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLaunchByIcon:Z

    .line 76
    const-string v2, "OOBE_CustomizationPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLaunchByIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLaunchByIcon:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mbBackFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mbBackFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->setContentView(I)V

    .line 80
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, btnNext:Landroid/widget/Button;
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLaunchByIcon:Z

    if-eqz v2, :cond_1

    .line 82
    const v2, 0x7f0a0013

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 83
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0, p0, p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 88
    invoke-direct {p0, p0, p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 364
    const-string v0, "OOBE_CustomizationPickerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 387
    const-string v2, "OOBE_CustomizationPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 409
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 391
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mbBackFinish:Z

    if-nez v2, :cond_0

    .line 392
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->setResult(I)V

    .line 393
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 402
    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 403
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->showEmergencyDial()V

    goto :goto_0

    .line 407
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 373
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 377
    :pswitch_0
    const/4 v0, 0x0

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    const-string v0, "OOBE_CustomizationPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->setSelect(I)V

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    .line 341
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 354
    const-string v0, "OOBE_CustomizationPickerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->isReceiverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->isReceiverRegistered:Z

    .line 357
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 347
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 348
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->registerReceiver()V

    .line 349
    return-void
.end method
