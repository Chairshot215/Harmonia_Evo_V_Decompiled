.class Lcom/htc/WifiRouter/Guild$2;
.super Ljava/lang/Object;
.source "Guild.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/Guild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/Guild;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/Guild;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/WifiRouter/Guild$2;->this$0:Lcom/htc/WifiRouter/Guild;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild$2;->this$0:Lcom/htc/WifiRouter/Guild;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/Guild;->finish()V

    .line 145
    return-void
.end method
