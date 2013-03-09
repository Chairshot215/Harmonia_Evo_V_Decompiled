.class public Lcom/htc/idlescreen/base/widget/IdleSphere;
.super Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;
.source "IdleSphere.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/IdleSphere$MyUIHandler;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleSphere"

.field private static final WHAT_UI_NAME_VISIBLE:I = 0x1


# instance fields
.field mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field mNameTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V
    .locals 0
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "timelineY"
    .parameter "timelineX"
    .parameter "timelineScale"
    .parameter "timelineOpacity"
    .parameter "hitbox"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p8}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/widget/IdleSphere;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleSphere;->handleNameVisible(Z)V

    return-void
.end method

.method private handleNameVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 43
    return-void
.end method


# virtual methods
.method public setName()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public setNameVisible(ZJ)V
    .locals 0
    .parameter "visible"
    .parameter "delay"

    .prologue
    .line 39
    return-void
.end method
