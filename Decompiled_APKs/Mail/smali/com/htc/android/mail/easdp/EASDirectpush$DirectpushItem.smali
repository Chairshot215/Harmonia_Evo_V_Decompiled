.class Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
.super Ljava/lang/Object;
.source "EASDirectpush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectpushItem"
.end annotation


# instance fields
.field collectionId:Ljava/lang/String;

.field enabled:Z

.field syncSourceType:I

.field final synthetic this$0:Lcom/htc/android/mail/easdp/EASDirectpush;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/EASDirectpush;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "id"

    .prologue
    .line 829
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->enabled:Z

    .line 830
    iput p2, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->syncSourceType:I

    .line 831
    iput-object p3, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->collectionId:Ljava/lang/String;

    .line 832
    return-void
.end method
