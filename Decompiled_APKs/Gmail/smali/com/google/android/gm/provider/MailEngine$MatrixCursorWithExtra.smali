.class Lcom/google/android/gm/provider/MailEngine$MatrixCursorWithExtra;
.super Landroid/database/MatrixCursor;
.source "MailEngine.java"

# interfaces
.implements Lcom/google/android/gm/provider/AppendableCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixCursorWithExtra"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "columnNames"
    .parameter "initialCapacity"
    .parameter "extras"

    .prologue
    .line 5055
    invoke-direct {p0, p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 5057
    iput-object p3, p0, Lcom/google/android/gm/provider/MailEngine$MatrixCursorWithExtra;->mExtras:Landroid/os/Bundle;

    .line 5058
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 5062
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$MatrixCursorWithExtra;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method
