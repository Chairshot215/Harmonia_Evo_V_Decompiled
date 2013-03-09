.class Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
.super Ljava/lang/Object;
.source "HtcCdmaProfileSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataProfileRecord"
.end annotation


# instance fields
.field onCompleted:Landroid/os/Message;

.field profile:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)V

    return-void
.end method
