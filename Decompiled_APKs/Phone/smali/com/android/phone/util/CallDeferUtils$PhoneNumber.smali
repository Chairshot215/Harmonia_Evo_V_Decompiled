.class public Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "CallDeferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/CallDeferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
