.class Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
.super Ljava/lang/Object;
.source "ForwardDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowInfo"
.end annotation


# instance fields
.field final mData:J

.field final mType:I

.field final synthetic this$1:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IJ)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "l"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->this$1:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput p2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    .line 723
    iput-wide p3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    .line 724
    return-void
.end method
