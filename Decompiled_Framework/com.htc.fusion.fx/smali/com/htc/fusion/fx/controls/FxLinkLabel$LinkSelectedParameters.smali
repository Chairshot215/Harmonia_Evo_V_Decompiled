.class public Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;
.super Ljava/lang/Object;
.source "FxLinkLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxLinkLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkSelectedParameters"
.end annotation


# instance fields
.field public links:[Ljava/lang/String;

.field public object:Lcom/htc/fusion/fx/controls/FxLinkLabel;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/FxLinkLabel;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;->object:Lcom/htc/fusion/fx/controls/FxLinkLabel;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;->links:[Ljava/lang/String;

    return-void
.end method
