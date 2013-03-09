.class Lcom/htc/fm/FMRadio$FreqUpdater;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreqUpdater"
.end annotation


# instance fields
.field private mFreq:I

.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;I)V
    .locals 0
    .parameter
    .parameter "freq"

    .prologue
    .line 2838
    iput-object p1, p0, Lcom/htc/fm/FMRadio$FreqUpdater;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2839
    iput p2, p0, Lcom/htc/fm/FMRadio$FreqUpdater;->mFreq:I

    .line 2840
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/htc/fm/FMRadio$FreqUpdater;->this$0:Lcom/htc/fm/FMRadio;

    iget v1, p0, Lcom/htc/fm/FMRadio$FreqUpdater;->mFreq:I

    #calls: Lcom/htc/fm/FMRadio;->mTune(I)Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$3800(Lcom/htc/fm/FMRadio;I)Z

    .line 2844
    return-void
.end method
