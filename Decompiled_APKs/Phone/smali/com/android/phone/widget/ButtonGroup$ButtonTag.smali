.class public Lcom/android/phone/widget/ButtonGroup$ButtonTag;
.super Ljava/lang/Object;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/ButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonTag"
.end annotation


# static fields
.field public static final UNDEFINED:I


# instance fields
.field public drawable:I

.field public id:I

.field public text:I

.field final synthetic this$0:Lcom/android/phone/widget/ButtonGroup;


# direct methods
.method public constructor <init>(Lcom/android/phone/widget/ButtonGroup;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->this$0:Lcom/android/phone/widget/ButtonGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 36
    iput v0, p0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 37
    iput v0, p0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    .line 38
    return-void
.end method
