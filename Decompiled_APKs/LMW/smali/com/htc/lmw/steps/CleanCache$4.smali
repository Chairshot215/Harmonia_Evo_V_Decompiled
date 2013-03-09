.class Lcom/htc/lmw/steps/CleanCache$4;
.super Ljava/lang/Object;
.source "CleanCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/CleanCache;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/CleanCache;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache$4;->this$0:Lcom/htc/lmw/steps/CleanCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->next()V

    .line 314
    return-void
.end method
