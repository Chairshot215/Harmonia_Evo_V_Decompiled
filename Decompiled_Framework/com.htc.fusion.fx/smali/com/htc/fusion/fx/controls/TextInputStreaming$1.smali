.class Lcom/htc/fusion/fx/controls/TextInputStreaming$1;
.super Ljava/lang/Object;
.source "TextInputStreaming.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputStreaming;->setTexture(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxTextInput;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputStreaming;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputStreaming;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming$1;->this$0:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming$1;->this$0:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming$1;->this$0:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z
    invoke-static {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->access$100(Lcom/htc/fusion/fx/controls/TextInputStreaming;)Z

    move-result v1

    #setter for: Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bReloadTexture:Z
    invoke-static {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->access$002(Lcom/htc/fusion/fx/controls/TextInputStreaming;Z)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
