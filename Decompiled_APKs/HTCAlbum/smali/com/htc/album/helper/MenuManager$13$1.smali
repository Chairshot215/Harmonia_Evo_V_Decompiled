.class Lcom/htc/album/helper/MenuManager$13$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$13;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$13;)V
    .locals 0
    .parameter

    .prologue
    .line 3635
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$13$1;->this$1:Lcom/htc/album/helper/MenuManager$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 3640
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 3641
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[filter] Null source or dest!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
    const-string v2, ""

    .line 3671
    :goto_0
    return-object v2

    .line 3644
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3645
    .local v1, inputString:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3653
    :cond_2
    sub-int v2, p6, p5

    if-lez v2, :cond_3

    .line 3655
    :try_start_0
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 3657
    :catch_0
    move-exception v0

    .line 3658
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[filter] Wrong value of dstart or dend!!"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3659
    const-string v2, ""

    goto :goto_0

    .line 3661
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 3662
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[filter] Unexpected exception!!"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3663
    const-string v2, ""

    goto :goto_0

    .line 3667
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, ""

    goto :goto_0

    .line 3671
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
