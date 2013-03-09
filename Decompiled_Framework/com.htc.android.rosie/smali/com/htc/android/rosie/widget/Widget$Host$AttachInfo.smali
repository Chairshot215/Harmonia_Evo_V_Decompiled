.class public final Lcom/htc/android/rosie/widget/Widget$Host$AttachInfo;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/Widget$Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachInfo"
.end annotation


# instance fields
.field private final parent:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/android/rosie/widget/Widget$Host$AttachInfo;->parent:Lcom/htc/fusion/fx/FxScene;

    return-void
.end method
