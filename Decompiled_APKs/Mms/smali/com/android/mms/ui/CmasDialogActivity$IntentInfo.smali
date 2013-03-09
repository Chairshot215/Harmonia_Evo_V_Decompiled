.class Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;
.super Ljava/lang/Object;
.source "CmasDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CmasDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentInfo"
.end annotation


# instance fields
.field public Expiretime:J

.field public MapKey:J

.field public MessageStr:Ljava/lang/String;

.field public Receivetime:J

.field final synthetic this$0:Lcom/android/mms/ui/CmasDialogActivity;

.field public tid:J

.field public type:I


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/CmasDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->this$0:Lcom/android/mms/ui/CmasDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/CmasDialogActivity;Lcom/android/mms/ui/CmasDialogActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;-><init>(Lcom/android/mms/ui/CmasDialogActivity;)V

    return-void
.end method
