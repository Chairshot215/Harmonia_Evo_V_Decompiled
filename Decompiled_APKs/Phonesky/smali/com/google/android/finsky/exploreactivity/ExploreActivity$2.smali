.class synthetic Lcom/google/android/finsky/exploreactivity/ExploreActivity$2;
.super Ljava/lang/Object;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/ExploreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$input$event$TouchEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/jme3/input/event/TouchEvent$Type;->values()[Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$2;->$SwitchMap$com$jme3$input$event$TouchEvent$Type:[I

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$2;->$SwitchMap$com$jme3$input$event$TouchEvent$Type:[I

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {v1}, Lcom/jme3/input/event/TouchEvent$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
