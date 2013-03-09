.class Lcom/htc/android/mail/MoveToAdapter$ViewTag;
.super Ljava/lang/Object;
.source "MoveToAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MoveToAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewTag"
.end annotation


# instance fields
.field mailboxID:J

.field tag:I

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/android/mail/MoveToAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MoveToAdapter;Ljava/lang/CharSequence;IJ)V
    .locals 0
    .parameter
    .parameter "text"
    .parameter "tag"
    .parameter "mailboxID"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->this$0:Lcom/htc/android/mail/MoveToAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->text:Ljava/lang/CharSequence;

    .line 271
    iput p3, p0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->tag:I

    .line 272
    iput-wide p4, p0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->mailboxID:J

    .line 273
    return-void
.end method
