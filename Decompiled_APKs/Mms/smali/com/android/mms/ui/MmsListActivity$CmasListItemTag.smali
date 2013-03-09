.class Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;
.super Ljava/lang/Object;
.source "MmsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsListActivity;
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

.field final synthetic this$0:Lcom/android/mms/ui/MmsListActivity;

.field time:J

.field timeStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MmsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->this$0:Lcom/android/mms/ui/MmsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MmsListActivity;Lcom/android/mms/ui/MmsListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;-><init>(Lcom/android/mms/ui/MmsListActivity;)V

    return-void
.end method
