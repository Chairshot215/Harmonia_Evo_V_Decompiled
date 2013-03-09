.class public Lcom/android/phone/util/Constants$Intent;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Intent"
.end annotation


# static fields
.field public static final ACTION_CALL_DEFER:Ljava/lang/String; = "com.android.phone.ACTION_CALL_DEFER"

.field public static final ACTION_CALL_DEFER_CALL:Ljava/lang/String; = "com.android.phone.ACTION_CALL_DEFER_CALL"

.field public static final ACTION_CALL_REMINDER:Ljava/lang/String; = "com.android.phone.ACTION_CALL_REMINDER"

.field public static final ACTION_CONFIRM_PASSWORD_RESULT:Ljava/lang/String; = "com.htc.action.CONFIRM_PASSWORD_RESULT"

.field public static final ACTION_EXIT_CONFIRM_PWD:Ljava/lang/String; = "com.htc.action.EXIT_CONFIRM_PASSWORD"

.field public static final ACTION_LS_EMINDER_PLACE_CALL:Ljava/lang/String; = "com.android.phone.ACTION_LS_EMINDER_PLACE_CALL"

.field public static final ACTION_LS_SNOOZE_REMINDER:Ljava/lang/String; = "com.android.phone.ACTION_LS_SNOOZE_REMINDER"

.field public static final ACTION_MODE_CHANGE:Ljava/lang/String; = "com.htc.launcher.action.mode_change"

.field public static final CLS_NAME_PWD_CONFIRM:Ljava/lang/String; = "com.android.settings.HtcChooseLockGeneric"

.field public static final EXTRA_DEST:Ljava/lang/String; = "dest"

.field public static final EXTRA_DIS_CAUSE:Ljava/lang/String; = "cause"

.field public static final EXTRA_HIDE_KEYGUARD:Ljava/lang/String; = "hideKeyguard"

.field public static final EXTRA_KIDZONE:Ljava/lang/String; = "kidzone"

.field public static final EXTRA_KIDZONE_MODE:Ljava/lang/String; = "kidzone_mode"

.field public static final EXTRA_MSG:Ljava/lang/String; = "msg"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final EXTRA_PWD_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_TARGET_NUMBER:Ljava/lang/String; = "number"

.field public static final KIDZONE_DISABLED:I = 0x0

.field public static final KIDZONE_ENABLED:I = 0x1

.field public static final KIDZONE_MODE_DISABLED:I = 0x0

.field public static final KIDZONE_MODE_ENABLED:I = 0x1

.field public static final KIDZONE_RESTRICTED:I = 0x2

.field public static final PKG_NAME_PWD_CONFIRM:Ljava/lang/String; = "com.android.settings"


# instance fields
.field final synthetic this$0:Lcom/android/phone/util/Constants;


# direct methods
.method public constructor <init>(Lcom/android/phone/util/Constants;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/util/Constants$Intent;->this$0:Lcom/android/phone/util/Constants;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
