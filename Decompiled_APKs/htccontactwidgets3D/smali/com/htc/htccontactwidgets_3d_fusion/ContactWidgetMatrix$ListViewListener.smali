.class abstract Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListViewListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListViewListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListViewListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 1113
    return-void
.end method
