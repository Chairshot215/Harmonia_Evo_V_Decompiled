.class Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsInfo"
.end annotation


# instance fields
.field bSuccess:Z

.field mEnable:Z

.field mIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLocked:I

.field mSegNum:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 5155
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    .line 5157
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mEnable:Z

    .line 5158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mLocked:I

    .line 5159
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->bSuccess:Z

    .line 5160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mSegNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5155
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method
