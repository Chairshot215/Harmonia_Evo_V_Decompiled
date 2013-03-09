.class public Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;
.super Ljava/lang/Object;
.source "FxSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickParameters"
.end annotation


# instance fields
.field public object:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public state:I


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/FxSettingButton;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;->object:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput p2, p0, Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;->state:I

    return-void
.end method
