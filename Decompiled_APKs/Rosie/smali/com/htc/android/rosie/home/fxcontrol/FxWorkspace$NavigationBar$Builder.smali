.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
.super Ljava/lang/Object;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFunctionBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mHeaderBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mHideAddPanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mHideAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mHideButtonBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mHideButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mHideEditHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mHideEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mHideFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mHideFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mHideRemoveHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mHideRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mHideRemovePanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mHideRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mShowAddPanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mShowAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mShowButtonBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mShowButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mShowEditHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mShowEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mShowFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mShowFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mShowRemoveHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mShowRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mShowRemovePanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

.field private mShowRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;
    .locals 19

    .prologue
    .line 2135
    new-instance v6, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowButtonBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v6, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2136
    .local v6, showButtonBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_0

    .line 2137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v6, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2138
    :cond_0
    new-instance v7, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideButtonBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v7, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2139
    .local v7, hideButtonBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_1

    .line 2140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v7, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2141
    :cond_1
    new-instance v8, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v8, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2142
    .local v8, showFunctionBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_2

    .line 2143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v8, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2144
    :cond_2
    new-instance v9, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v9, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2145
    .local v9, hideFunctionBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_3

    .line 2146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v9, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2148
    :cond_3
    new-instance v10, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowAddPanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v10, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2149
    .local v10, showAddPanelFunctionBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_4

    .line 2150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v10, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2151
    :cond_4
    new-instance v11, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideAddPanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v11, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2152
    .local v11, hideAddPanelFunctionBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_5

    .line 2153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v11, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2154
    :cond_5
    new-instance v12, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemovePanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v12, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2155
    .local v12, showRemovePanelFunctionBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_6

    .line 2156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v12, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2157
    :cond_6
    new-instance v13, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemovePanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v13, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2158
    .local v13, hideRemovePanelFunctionBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_7

    .line 2159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v13, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2161
    :cond_7
    new-instance v14, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowEditHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v14, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2162
    .local v14, showEditHeaderBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_8

    .line 2163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v14, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2164
    :cond_8
    new-instance v15, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideEditHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    invoke-direct {v15, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2165
    .local v15, hideEditHeaderBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_9

    .line 2166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v15, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2167
    :cond_9
    new-instance v16, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemoveHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2168
    .local v16, showRemoveHeaderBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_a

    .line 2169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v14, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2170
    :cond_a
    new-instance v17, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemoveHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 2171
    .local v17, hideRemoveHeaderBar:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v1, :cond_b

    .line 2172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v15, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    .line 2175
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 2177
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mFunctionBar:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHeaderBar:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V

    return-object v1
.end method

.method setAnimationTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "workspace"

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mAnimationTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2059
    return-object p0
.end method

.method setButtonBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "buttonBar"

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2039
    return-object p0
.end method

.method setFunctionBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "functionBar"

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mFunctionBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2044
    return-object p0
.end method

.method setHeaderBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "headerBar"

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHeaderBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2049
    return-object p0
.end method

.method setHideAddPanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "hideAddPanelFunctionBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideAddPanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2094
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2095
    return-object p0
.end method

.method setHideButtonBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "hideButtonBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideButtonBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2070
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2071
    return-object p0
.end method

.method setHideEditHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "hideEditHeaderMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideEditHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2118
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2119
    return-object p0
.end method

.method setHideFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "hideFunctionBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2082
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2083
    return-object p0
.end method

.method setHideRemoveHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "hideRemoveHeaderMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemoveHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2130
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2131
    return-object p0
.end method

.method setHideRemovePanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "hideRemovePanelFunctionBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2105
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemovePanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2106
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mHideRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2107
    return-object p0
.end method

.method setNavEditBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "navEditBar"

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2054
    return-object p0
.end method

.method setShowAddPanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "showAddPanelFunctionBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2087
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowAddPanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2088
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowAddPanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2089
    return-object p0
.end method

.method setShowButtonBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "showButtonBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowButtonBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2064
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowButtonBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2065
    return-object p0
.end method

.method setShowEditHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "showEditHeaderMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowEditHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2112
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowEditHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2113
    return-object p0
.end method

.method setShowFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "showFunctionBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2076
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2077
    return-object p0
.end method

.method setShowRemoveHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "showRemoveHeaderMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemoveHeaderAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2124
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemoveHeaderMarkerCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2125
    return-object p0
.end method

.method setShowRemovePanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    .locals 0
    .parameter "showRemovePanelFunctionBarMarker"
    .parameter "onCompleteListener"

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemovePanelFunctionBarAnimMarker:Lcom/htc/fusion/fx/Marker;

    .line 2100
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->mShowRemovePanelFunctionBarCompleteListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 2101
    return-object p0
.end method
