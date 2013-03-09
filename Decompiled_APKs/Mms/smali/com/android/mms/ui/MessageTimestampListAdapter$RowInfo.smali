.class Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
.super Ljava/lang/Object;
.source "MessageTimestampListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTimestampListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowInfo"
.end annotation


# instance fields
.field final mData:J

.field final mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageTimestampListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTimestampListAdapter;IJ)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "l"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->this$0:Lcom/android/mms/ui/MessageTimestampListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput p2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    .line 515
    iput-wide p3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    .line 516
    return-void
.end method
