.class Lcom/htc/opensense/album/PresentationActivityBase$1;
.super Ljava/lang/Object;
.source "PresentationActivityBase.java"

# interfaces
.implements Lcom/htc/opensense/album/PresentationManager$PresentationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/PresentationActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/PresentationActivityBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/PresentationActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase$1;,"Lcom/htc/opensense/album/PresentationActivityBase.1;"
    iput-object p1, p0, Lcom/htc/opensense/album/PresentationActivityBase$1;->this$0:Lcom/htc/opensense/album/PresentationActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(I)Z
    .locals 1
    .parameter "focusId"

    .prologue
    .line 21
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase$1;,"Lcom/htc/opensense/album/PresentationActivityBase.1;"
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase$1;->this$0:Lcom/htc/opensense/album/PresentationActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/PresentationActivityBase;->shouldFilterOut(I)Z

    move-result v0

    return v0
.end method
