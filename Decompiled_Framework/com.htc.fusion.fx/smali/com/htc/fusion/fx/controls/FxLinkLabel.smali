.class public Lcom/htc/fusion/fx/controls/FxLinkLabel;
.super Lcom/htc/fusion/fx/controls/FxTextLabel;
.source "FxLinkLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native getLinkSelectedEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getLinkSelectedSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getLinkStyle()Lcom/htc/fusion/mode10/RichTextVisualAttributes;
.end method

.method public native setLinkStyle(Lcom/htc/fusion/mode10/RichTextVisualAttributes;)V
.end method
