.class Lcom/htc/android/fieldtrial/FieldTrial$2;
.super Ljava/lang/Object;
.source "FieldTrial.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/FieldTrial;->populateFileds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/FieldTrial;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/FieldTrial;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/android/fieldtrial/FieldTrial$2;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 271
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
