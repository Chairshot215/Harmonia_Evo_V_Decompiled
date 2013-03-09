.class Lcom/htc/app/FilePickerActivity$5;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/htc/app/FilePickerListView$LayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity;->initialFilePicker(Ljava/lang/String;IZII[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$5;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$5;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity;->listViewOnLayout()V

    .line 711
    return-void
.end method
