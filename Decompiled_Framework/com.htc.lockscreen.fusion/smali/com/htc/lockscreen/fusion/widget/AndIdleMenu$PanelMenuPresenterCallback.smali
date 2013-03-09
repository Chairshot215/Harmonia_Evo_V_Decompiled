.class Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AndIdleMenu.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;-><init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
