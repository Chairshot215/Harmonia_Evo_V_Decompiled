.class public Lcom/htc/fusion/fx/autotest/FxATHelper;
.super Ljava/lang/Object;
.source "FxATHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getDescendantsForAT(Lcom/htc/fusion/fx/FxViewObject;)[Lcom/htc/fusion/fx/FxObject;
.end method

.method public static native handleATCommand(Lcom/htc/fusion/fx/FxViewObject;Ljava/lang/String;)Z
.end method

.method public static handleATCommand(Lcom/htc/fusion/fx/FxViewObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/htc/fusion/fx/autotest/FxATHelper;->handleATCommandTextInput(Lcom/htc/fusion/fx/FxViewObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native handleATCommandTextInput(Lcom/htc/fusion/fx/FxViewObject;Ljava/lang/String;Ljava/lang/String;)Z
.end method
