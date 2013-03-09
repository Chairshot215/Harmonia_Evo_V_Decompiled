.class Lcom/htc/android/fieldtrial/FieldTrial$4;
.super Ljava/lang/Object;
.source "FieldTrial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 290
    iput-object p1, p0, Lcom/htc/android/fieldtrial/FieldTrial$4;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$4;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->finish()V

    .line 293
    return-void
.end method
