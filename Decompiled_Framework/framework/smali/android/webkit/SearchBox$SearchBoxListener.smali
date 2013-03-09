.class public abstract Landroid/webkit/SearchBox$SearchBoxListener;
.super Ljava/lang/Object;
.source "SearchBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/SearchBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SearchBoxListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelComplete(Z)V
    .locals 0

    return-void
.end method

.method public onChangeComplete(Z)V
    .locals 0

    return-void
.end method

.method public onResizeComplete(Z)V
    .locals 0

    return-void
.end method

.method public onSubmitComplete(Z)V
    .locals 0

    return-void
.end method

.method public onSuggestionsReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
