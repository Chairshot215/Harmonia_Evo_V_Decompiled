.class Lcom/htc/fm/FMSeekBar$Initializer$1;
.super Ljava/lang/Object;
.source "FMSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMSeekBar$Initializer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/fm/FMSeekBar$Initializer;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMSeekBar$Initializer;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/fm/FMSeekBar$Initializer$1;->this$1:Lcom/htc/fm/FMSeekBar$Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar$Initializer$1;->this$1:Lcom/htc/fm/FMSeekBar$Initializer;

    iget-object v0, v0, Lcom/htc/fm/FMSeekBar$Initializer;->this$0:Lcom/htc/fm/FMSeekBar;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar$Initializer$1;->this$1:Lcom/htc/fm/FMSeekBar$Initializer;

    #getter for: Lcom/htc/fm/FMSeekBar$Initializer;->allSyncValues:[Lcom/htc/fm/FMSeekBar$SyncValues;
    invoke-static {v1}, Lcom/htc/fm/FMSeekBar$Initializer;->access$200(Lcom/htc/fm/FMSeekBar$Initializer;)[Lcom/htc/fm/FMSeekBar$SyncValues;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/fm/FMSeekBar$SyncValues;->getInitFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 383
    return-void
.end method
