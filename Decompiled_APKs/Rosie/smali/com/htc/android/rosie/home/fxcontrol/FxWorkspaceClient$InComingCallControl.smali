.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;
.super Ljava/lang/Object;
.source "FxWorkspaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InComingCallControl"
.end annotation


# static fields
.field public static final IN_COMING_CALL_CONTROL:Ljava/lang/String; = "timeline.navbtn_incall"

.field private static final IN_COMING_CALL_MARKER:Ljava/lang/String; = "incall_loop"


# instance fields
.field private mControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V
    .locals 2
    .parameter

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "timeline.navbtn_incall"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->mControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1809
    return-void
.end method


# virtual methods
.method public play()V
    .locals 5

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->mControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->mControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "incall_loop"

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1816
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->mControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->mControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1821
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->mControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1823
    :cond_0
    return-void
.end method
