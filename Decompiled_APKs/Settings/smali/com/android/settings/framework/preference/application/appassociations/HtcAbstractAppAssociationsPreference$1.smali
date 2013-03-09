.class Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcAbstractAppAssociationsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 380
    const/4 v5, 0x0

    .line 382
    .local v5, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 383
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v6}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$000(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 384
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040083

    invoke-virtual {v1, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 393
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    const v6, 0x7f080004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 394
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$100(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    const v6, 0x7f080162

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemRadioButton;

    .line 397
    .local v2, rb:Lcom/htc/widget/HtcListItemRadioButton;
    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 405
    const v6, 0x7f08000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 407
    .local v3, text1:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$200(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const v6, 0x7f0800ed

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 410
    .local v4, text2:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$300(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #calls: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I
    invoke-static {v6}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$400(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 416
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 422
    :goto_1
    return-object v5

    .line 387
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v2           #rb:Lcom/htc/widget/HtcListItemRadioButton;
    .end local v3           #text1:Landroid/widget/TextView;
    .end local v4           #text2:Landroid/widget/TextView;
    :cond_0
    move-object v5, p2

    goto :goto_0

    .line 419
    .restart local v0       #icon:Landroid/widget/ImageView;
    .restart local v2       #rb:Lcom/htc/widget/HtcListItemRadioButton;
    .restart local v3       #text1:Landroid/widget/TextView;
    .restart local v4       #text2:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    goto :goto_1
.end method
