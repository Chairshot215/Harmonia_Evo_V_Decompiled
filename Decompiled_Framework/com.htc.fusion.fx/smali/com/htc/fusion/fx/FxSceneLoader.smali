.class public Lcom/htc/fusion/fx/FxSceneLoader;
.super Lcom/htc/fusion/fx/NativeReference;
.source "FxSceneLoader.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->loadNativeLibrary()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/NativeReference;-><init>(I)V

    return-void
.end method

.method public static native create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxSceneLoader;
.end method


# virtual methods
.method public native preLoad()Z
.end method
