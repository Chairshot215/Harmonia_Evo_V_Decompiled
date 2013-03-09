.class public final Lcom/htc/fusion/fx/controls/FxStreamingTexture$FxFutureIndex;
.super Ljava/lang/Object;
.source "FxStreamingTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxStreamingTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FxFutureIndex"
.end annotation


# static fields
.field public static final SWAP_COMPLETE:I = 0x0

.field public static final SWAP_RENDER_COMPLETE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxStreamingTexture;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$FxFutureIndex;->this$0:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
