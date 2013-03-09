.class public Lcom/google/android/gm/provider/SenderInstructions$Sender;
.super Ljava/lang/Object;
.source "SenderInstructions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/SenderInstructions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sender"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public priority:I

.field public unread:Z

.field public visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
