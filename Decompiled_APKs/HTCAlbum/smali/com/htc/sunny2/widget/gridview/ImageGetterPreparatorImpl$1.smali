.class synthetic Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl$1;
.super Ljava/lang/Object;
.source "ImageGetterPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->values()[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    :try_start_0
    sget-object v0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ordinal()I

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
