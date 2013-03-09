.class Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
.super Ljava/lang/Object;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCallInfo"
.end annotation


# instance fields
.field public app:Landroid/app/Application;

.field public dialog:Lcom/htc/app/HtcProgressDialog;

.field public intent:Landroid/content/Intent;

.field public isECCtriggeredByIMS:Z

.field public phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->isECCtriggeredByIMS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EmergencyCallHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;-><init>()V

    return-void
.end method
