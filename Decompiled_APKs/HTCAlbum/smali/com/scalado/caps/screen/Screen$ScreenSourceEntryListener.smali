.class Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;
.super Lcom/scalado/caps/SessionListener;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/screen/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSourceEntryListener"
.end annotation


# instance fields
.field private screen:Lcom/scalado/caps/screen/Screen;

.field final synthetic this$0:Lcom/scalado/caps/screen/Screen;


# direct methods
.method constructor <init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V
    .locals 0
    .parameter
    .parameter "screen"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;->this$0:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0}, Lcom/scalado/caps/SessionListener;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;->screen:Lcom/scalado/caps/screen/Screen;

    .line 71
    return-void
.end method


# virtual methods
.method public onSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "oldDecoder"
    .parameter "newDecoder"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;->screen:Lcom/scalado/caps/screen/Screen;

    #calls: Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    invoke-static {v0, p1, p2}, Lcom/scalado/caps/screen/Screen;->access$000(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    .line 75
    return-void
.end method
