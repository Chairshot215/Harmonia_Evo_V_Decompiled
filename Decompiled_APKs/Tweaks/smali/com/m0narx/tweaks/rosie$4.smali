.class Lcom/m0narx/tweaks/rosie$4;
.super Ljava/lang/Object;
.source "rosie.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosie;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosie;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosie;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 108
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    :cond_0
    const-string v4, "pref_rosie_smooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_smooth"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 114
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 141
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #calls: Lcom/m0narx/tweaks/rosie;->CheckButtonState()V
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$1(Lcom/m0narx/tweaks/rosie;)V

    move v2, v3

    .line 142
    :goto_1
    return v2

    .line 115
    :cond_2
    const-string v4, "enable_unlock_animation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_skip_unlock_animation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 117
    :cond_3
    const-string v4, "hide_lbl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 118
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_navbar_hidelabel"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 120
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 121
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #calls: Lcom/m0narx/tweaks/rosie;->SetupRoiseNavBar()V
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$2(Lcom/m0narx/tweaks/rosie;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string v4, "nav_trans"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_navbar_transp"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 125
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 126
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #calls: Lcom/m0narx/tweaks/rosie;->SetupRoiseNavBar()V
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$2(Lcom/m0narx/tweaks/rosie;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string v4, "paginated_apps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_use_pages"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 130
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    goto :goto_0

    .line 131
    :cond_6
    const-string v4, "rosie_bgcolor_pref"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 132
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_bgcolor"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 133
    :cond_7
    const-string v4, "rosie_custombg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_8

    .line 135
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_rosie_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 137
    :cond_8
    iget-object v3, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    const/4 v4, 0x2

    #calls: Lcom/m0narx/tweaks/rosie;->InstallBg(I)V
    invoke-static {v3, v4}, Lcom/m0narx/tweaks/rosie;->access$3(Lcom/m0narx/tweaks/rosie;I)V

    goto/16 :goto_1
.end method
