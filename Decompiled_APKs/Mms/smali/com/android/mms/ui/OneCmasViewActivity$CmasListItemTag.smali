.class Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;
.super Ljava/lang/Object;
.source "OneCmasViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/OneCmasViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmasListItemTag"
.end annotation


# instance fields
.field _id:J

.field body:Ljava/lang/String;

.field c_type:I

.field exp:J

.field expStr:Ljava/lang/String;

.field group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

.field locked:Z

.field read:Z

.field final synthetic this$0:Lcom/android/mms/ui/OneCmasViewActivity;

.field time:J

.field timeStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/OneCmasViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->this$0:Lcom/android/mms/ui/OneCmasViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/OneCmasViewActivity;Lcom/android/mms/ui/OneCmasViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;-><init>(Lcom/android/mms/ui/OneCmasViewActivity;)V

    return-void
.end method
