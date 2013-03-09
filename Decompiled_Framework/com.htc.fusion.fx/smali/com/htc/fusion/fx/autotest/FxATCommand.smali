.class public Lcom/htc/fusion/fx/autotest/FxATCommand;
.super Ljava/lang/Object;
.source "FxATCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandButtonClick(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandHitboxLongTap(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandHitboxSwipe(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandHitboxTap(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandLinkSelected(Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxListItemEvent;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandItemClick(Lcom/htc/fusion/fx/controls/FxListItemEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandSettingClick(Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommand(Lcom/htc/fusion/fx/controls/FxTextInputEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxTextInputEvent;->control:Lcom/htc/fusion/fx/FxControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxControl;->getFullID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fusion/fx/autotest/FxATCommand;->createCommandTextInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native createCommandButtonClick(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)Ljava/lang/String;
.end method

.method private static native createCommandHitboxLongTap(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)Ljava/lang/String;
.end method

.method private static native createCommandHitboxSwipe(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)Ljava/lang/String;
.end method

.method private static native createCommandHitboxTap(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)Ljava/lang/String;
.end method

.method private static native createCommandItemClick(Lcom/htc/fusion/fx/controls/FxListItemEvent;)Ljava/lang/String;
.end method

.method private static native createCommandLinkSelected(Lcom/htc/fusion/fx/controls/FxLinkLabel$LinkSelectedParameters;)Ljava/lang/String;
.end method

.method private static native createCommandSettingClick(Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;)Ljava/lang/String;
.end method

.method private static native createCommandTextInput(Ljava/lang/String;)Ljava/lang/String;
.end method
