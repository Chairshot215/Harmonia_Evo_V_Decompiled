.class Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DefaultComposeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/DefaultComposeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/gm/DefaultComposeLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/DefaultComposeLayout;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->this$0:Lcom/google/android/gm/DefaultComposeLayout;

    .line 247
    const v0, 0x7f040011

    const v1, 0x7f0f0034

    #getter for: Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/gm/DefaultComposeLayout;->access$000(Lcom/google/android/gm/DefaultComposeLayout;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 260
    if-nez p2, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 263
    :cond_0
    const v0, 0x7f0f0034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/DefaultComposeLayout$ComposeModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
