.class Lcom/htc/music/HtcMusic$30;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startPlayback()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    return-void
.end method
